task fread(string filename, output string rdata[$], input string fmt="line");
    int    file_handle;
    int    line;
    string data_line;
    integer char;

    file_handle = $fopen(filename, "r");

    if (file_handle == 0) begin
        $display("Error: Unable to open file '%s'", filename);
    end

    if (fmt == "string") begin
        $display("$fscanf by string");
        while (!$feof(file_handle)) begin
            void'($fscanf(file_handle, "%s", data_line));
            $display("[ti] %s", data_line);
            rdata.push_back(data_line);
        end
    end
    else if (fmt == "line") begin
        $display("$fscanf by line");
        while (1) begin
            if ($feof(file_handle)) begin
                rdata.push_back(data_line);
                break;
            end

            char = $fgetc(file_handle);

            // char == "\n"
            if (char == 10) begin
                data_line = {data_line, char};
                rdata.push_back(data_line);
                data_line = "";
            end
            data_line = {data_line, char};
        end
    end

    foreach (rdata[i]) begin
        $display(rdata[i]);
    end

    $fclose(file_handle);
endtask

module dut();
    string rdata[$];

    initial begin
        fread("tian_pkg.sv", rdata, "string");
        $finish;
    end
endmodule
