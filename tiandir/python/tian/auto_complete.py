tian.command_parse.body_str2opt(body_str:str)
tian.command_parse.check_dupplicate_key(key:str, option_infos:list)
tian.command_parse.comment_key(option_infos:list)
tian.command_parse.compose_excute_file()
tian.command_parse.get_keys_from_command()
tian.command_parse.get_option_infos()
tian.command_parse.is_exist_key(key:str, option_infos:list)
tian.command_parse.match_option(key:str, option_infos:list)
tian.command_parse.merge_run_file()
tian.command_parse.parse(outdir:str, host_name:str, use_xterm, nolsf)
tian.command_parse.print(self)

tian.random.rand_from_list(ilist:list)
tian.random.randint(imin, imax)
tian.random.randlist(imin, imax, isize)

tian.argv.get_argument_by_prefix(prefix_arg_mess:str)
tian.argv.has_argument(arg_mess:str)
tian.argv.len()
tian.argv.print()

tian.time.getday()
tian.time.getfull()
tian.time.gethour()

tian.excel.__init__(self, excel_link)
tian.excel.compare_xlsx(excel_link0, excel_link1)
tian.excel.convert_xls_to_xlsx(input_file)
tian.excel.create_excel_file(excel_link)
tian.excel.create_sheet(self, sheet_name)
tian.excel.drop_down_list(self, cell, choices:list)
tian.excel.fmt_alignment_cell(self, cell, align='center')
tian.excel.fmt_boder_cell(self, cell, align='center', istyle='medium')
tian.excel.fmt_cell_color(self, cell, color='green')
tian.excel.fmt_cell_color_bg(self, cell, color='gray')
tian.excel.fmt_color_condition(self, cell, keyword:str, color:str)
tian.excel.fmt_freeze_cell(self, cell)
tian.excel.fmt_hyperlink(self, cell, dst_sheet:str, dst_addr:str, message:str)
tian.excel.fmt_percent_style(self, cell)
tian.excel.fmt_table(self, ws, table_range:str)
tian.excel.fmt_table_allcell(self, ws)
tian.excel.fmt_wrap_text(self, cell)
tian.excel.get_cells_from_sheet(self, sheet)
tian.excel.get_color(self, color='green')
tian.excel.get_column_letter(self, cell)
tian.excel.get_sheet_by_name(self, sheet_name:str)
tian.excel.get_value(self, sheet_name:str, cell_addr:str)
tian.excel.isMergeCell(self, i_sheet, i_cell)
tian.excel.remove_sheet(self, sheet_name)
tian.excel.remove_trash_cell(self)
tian.excel.resize_col(self, cell, width:int)
tian.excel.resize_row(self, cell, height:int)
tian.excel.save(self, link:str)
tian.excel.set_value(self, sheet_name:str, cell_addr:str, str_value:str)
tian.excel.set_value_by_index(self, irow:int, icol:int, ivalue)

tian.file.append(link, wdata, mode="none")
tian.file.execute(link)
tian.file.make_uniq(link, overwrite = "not_overide")
tian.file.read(link, return_type = "list")
tian.file.realpath(link)
tian.file.remove_line(link, keyword)
tian.file.remove_line_not_include(link, keyword)
tian.file.replace(old:str, new:str, link)
tian.file.write(link, wdata)

tian.basename(link)
tian.change_char_by_index(string, index:int, char:str)
tian.current_folder()
tian.dirname(link)
tian.divide_by_key(input_lst:list, key:str)
tian.get_env_var(env_var="")
tian.get_file_names(path)
tian.get_file_type(file_link)
tian.get_folder_names(path)
tian.getenv(env_var="")
tian.is_dir(path_str="")
tian.is_file(path_str="")
tian.jj2_append(fin_path, fout_path, **kwargs)
tian.jj2_write(fin_path, fout_path, **kwargs)
tian.len_fmt(mess, width:int)
tian.parse_xml(xml_link)
tian.print_banner(message)
tian.print_class_attr(class_object)
tian.print_list(ilist:list)
tian.read_file(link_file)
tian.realpath(link)
tian.run(command:str)
tian.run_with_output(command:str, type_return="list")
tian.write_file(link_file, wdata)

tian.calc.add_hex_str(hex0:str, hex1:str)
tian.calc.sub_hex_str(hex0:str, hex1:str)

tian.convert.bin2dec(bin_str:str)
tian.convert.bin2hex(bin_string, prefix="")
tian.convert.dec2bin(dec:int, prefix="")
tian.convert.dec2hex(dec:int, prefix="")
tian.convert.hex2bin(hex_string:str, bit_width=0)
tian.convert.hex2dec(hex_string:str)
tian.convert.invert(dec:int)

workexcel.__init__(self, excel_link)
workexcel.compare_xlsx(excel_link0, excel_link1)
workexcel.convert_xls_to_xlsx(input_file)
workexcel.create_excel_file(excel_link)
workexcel.create_sheet(self, sheet_name)
workexcel.drop_down_list(self, cell, choices:list)
workexcel.fmt_alignment_cell(self, cell, align='center')
workexcel.fmt_boder_cell(self, cell, align='center', istyle='medium')
workexcel.fmt_cell_color(self, cell, color='green')
workexcel.fmt_cell_color_bg(self, cell, color='gray')
workexcel.fmt_color_condition(self, cell, keyword:str, color:str)
workexcel.fmt_freeze_cell(self, cell)
workexcel.fmt_hyperlink(self, cell, dst_sheet:str, dst_addr:str, message:str)
workexcel.fmt_percent_style(self, cell)
workexcel.fmt_table(self, ws, table_range:str)
workexcel.fmt_table_allcell(self, ws)
workexcel.fmt_wrap_text(self, cell)
workexcel.get_cells_from_sheet(self, sheet)
workexcel.get_color(self, color='green')
workexcel.get_column_letter(self, cell)
workexcel.get_sheet_by_name(self, sheet_name:str)
workexcel.get_value(self, sheet_name:str, cell_addr:str)
workexcel.isMergeCell(self, i_sheet, i_cell)
workexcel.remove_sheet(self, sheet_name)
workexcel.remove_trash_cell(self)
workexcel.resize_col(self, cell, width:int)
workexcel.resize_row(self, cell, height:int)
workexcel.save(self, link:str)
workexcel.set_value(self, sheet_name:str, cell_addr:str, str_value:str)
workexcel.set_value_by_index(self, irow:int, icol:int, ivalue)
