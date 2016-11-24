package interlink.service;

import interlink.dao.ListDAO;
import interlink.model.TasksList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ListService {

    @Autowired
    ListDAO dao;

    public List<TasksList> getAllListsWithTasks() {
        List<TasksList> list = dao.getAllListTasks();
        return list;
    }

    public List<TasksList> getAllLists() {
        List<TasksList> list = dao.getAllLists();
        return list;
    }

    public void addNewList(String name) {
        dao.addNewList(name);
    }

    public void deleteTask(String id) {
        dao.delete(id);
    }
}
