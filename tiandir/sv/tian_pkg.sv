`ifndef __TIAN_PKG__
`define __TIAN_PKG__

package tian_pkg;
    // has_substr
    function bit has_substr(string substr, string mainstr);
        for (int i=0; i<(mainstr.len()-substr.len()+1); i++) begin
            if( mainstr.substr(i,i+substr.len()-1) == substr ) begin
                return 1;
            end
        end
        return 0;
    endfunction

    // compare_data
    function bit compare_data(logic left_data, logic right_data);
        if (left_data != right_data) `uvm_log_err ($psprintf("data mismatch 0x%h != 0x%h", left_data, right_data));
        else                         `uvm_info_med($psprintf("data mismatch 0x%h != 0x%h", left_data, right_data));
    endfunction

    // compare_array
    function bit compare_array(logic left_data[], logic right_data[]);
        int size = left_data.size();
        bit is_data_match = 1;
        foreach left_data[i] begin
            if (compare_data(left_data[i], right_data[i]) == 0) begin
                is_data_match = 0;
            end
        end
        return is_data_match;
    endfunction

    // fwrite
    function void fwrite(string filename, string wdata);
        int    handle_file = $fopen(filename, "w");
        if (handle_file == 0) begin
            `uvm_fatal("FWRITE", $psprintf("Error opening file '%s' for writing", filename))
        end
        $fwrite(handle_file, wdata);
        $fclose(handle_file);
    endfunction

    // fappend
    function void fappend(string filename, string wdata);
        int    handle_file = $fopen(filename, "a+");
        if (handle_file == 0) begin
            `uvm_fatal("FWRITE", $psprintf("Error opening file '%s' for writing", filename))
        end
        $fwrite(handle_file, wdata);
        $fclose(handle_file);
    endfunction

    // fread
    // input string fmt: "line","string"
    task fread(string filename, output string rdata[$], input string fmt="line");
        int     file_handle;
        string  data_line;
        integer char;

        file_handle = $fopen(filename, "r");

        if (file_handle == 0) $display("Error: Unable to open file '%s'", filename);

        if (fmt == "string") begin
            $display("$fscanf by string");
            while (!$feof(file_handle)) begin
                void'($fscanf(file_handle, "%s", data_line));
                $display("[FREAD] %s", data_line);
                rdata.push_back(data_line);
            end
        end

        if (fmt == "line") begin
            $display("$fscanf by line");
            while (1) begin
                if ($feof(file_handle)) begin
                    rdata.push_back(data_line);
                    break;
                end
                char = $fgetc(file_handle);
                // char == "\n"
                if (char == 10) begin
                    rdata.push_back(data_line);
                    data_line = "";
                end
                data_line = {data_line, char};
            end
        end

        foreach (rdata[i]) begin
            $display("[FREAD] %s", rdata[i]);
        end

        $fclose(file_handle);
    endtask

endpackage

`endif


// -------------------------------------------------------------------|
//  Note                                                              |
// -------------------------------------------------------------------|
// Dictionary type: logic [31:0] dict[string];
