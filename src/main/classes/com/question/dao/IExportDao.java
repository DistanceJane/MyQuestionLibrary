package com.question.dao;

import com.question.beans.Export;
import com.question.beans.User;

import java.util.List;

public interface IExportDao {
    void insertExport(Export export);
    void deleteExport(int id);
    Export selectExportById(int id);
    List<Export> listExportUnderUser(User user);
}
