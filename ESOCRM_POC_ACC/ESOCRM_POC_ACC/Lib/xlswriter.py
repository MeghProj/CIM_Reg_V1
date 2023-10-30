import xlsxwriter


def load_in_excel(xlsx_file_path, myDictionary):
    workbook = xlsxwriter.Workbook(xlsx_file_path)
    worksheet = workbook.add_worksheet()
    row = 0
    for key in myDictionary.keys():
        worksheet.write(row, 0, key)
        worksheet.write_row(row, 1, myDictionary[key])
        row += 1
    workbook.close()
