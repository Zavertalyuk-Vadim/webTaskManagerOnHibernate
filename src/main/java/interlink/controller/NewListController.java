package interlink.controller;

import interlink.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class NewListController {

    @Autowired
    ListService listService;

    @RequestMapping(value = "list/newList", method = RequestMethod.POST)
    String newList(@RequestParam("name") String name) throws IOException {
        listService.addNewList(name);
        return "redirect:/home/list/newList";
    }
}
