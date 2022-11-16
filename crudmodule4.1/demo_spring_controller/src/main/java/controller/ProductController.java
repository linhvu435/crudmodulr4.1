package controller;

import com.mysql.cj.x.protobuf.MysqlxDatatypes;
import model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.ProductService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class ProductController {
    @GetMapping("/products")
    public MysqlxDatatypes.Scalar.String showProduct(ModelMap modelMap){
        modelMap.addAttribute("products", ProductService.products);
        return "/showProduct";
  }
  @GetMapping("/create")
    public ModelAndView create(){
        ModelAndView modelAndView = new ModelAndView("/create");
        return modelAndView;
  }
    @PostMapping("/create")
    public void save(@ModelAttribute Product product, HttpServletRequest request, HttpServletResponse response) throws IOException {
        ProductService.save(product);
        response.sendRedirect("/products");
    }
    @GetMapping("/edit/{id}")
    public ModelAndView showEdit(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("/edit");
        modelAndView.addObject("product",ProductService.getProduct(id));
        return modelAndView;
    }

    @PostMapping ("/edit/{id}")
    public ModelAndView edit(@ModelAttribute Product product, @PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/products");
        ProductService.edit(ProductService.findIndexById(id), product);
        return modelAndView;
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {

        ProductService.delete(id);

        return "redirect:/products";
    }


}
