`ifndef __TIAN_PKG__
`define __TIAN_PKG__

`include "tian_macros.svh"
`include "uvm_macros.svh"

package tian_pkg;
    import uvm_pkg::*;

    // has_substr
    function bit has_substr(string substr, string mainstr);
        for (int i=0; i<(mainstr.len()-substr.len()+1); i++) begin
            if( mainstr.substr(i,i+substr.len()-1) == substr ) begin
                return 1;
            end
        end
        return 0;
    endfunction

    /*
    // write_file
    function automatic void write_file(string fn, string wdata);
        static int    handle_file = $fopen(fn, "w");
        if (handle_file == 0) begin
            `uvm_fatal("FWRITE", $psprintf("Error opening file '%s' for writing", fn))
        end
        $fwrite(handle_file, wdata);
        $fclose(handle_file);
    endfunction

    // append_file
    function automatic void append_file(string fn, string wdata);
        static int    handle_file = $fopen(fn, "a+");
        if (handle_file == 0) begin
            `uvm_fatal("FWRITE", $psprintf("Error opening file '%s' for writing", fn))
        end
        $fwrite(handle_file, wdata);
        $fclose(handle_file);
    endfunction
    */

    // read_file
    // input string fmt: "line","string"
    function automatic void read_file(string fn, output string rdata[$], input string fmt="line");/*{{{*/
        static int     file_handle;
        string         data_line;
        integer        char;

        file_handle = $fopen(fn, "r");

        if (file_handle == 0) $display("Error: Unable to open file '%s'", fn);

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
    endfunction/*}}}*/

    `include "./include/virtual_mem.sv"
    `include "./include/uvm_report_format.sv"

endpackage

`endif


// -------------------------------------------------------------------|
//  Note                                                              |
// -------------------------------------------------------------------|
// Dictionary type: logic [31:0] dict[string];
