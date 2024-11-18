package cl.duoc.fullstack_back_products.controllers;

import cl.duoc.fullstack_back_products.models.ProductModel;
import cl.duoc.fullstack_back_products.models.ResponseModel;
import cl.duoc.fullstack_back_products.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/api/productos/")
@RestController
public class ProductsController {

    @Autowired
    private ProductService productService;

    @PostMapping("/agregar-producto")
    public ResponseModel addProduct(@RequestBody ProductModel product) {
        try {
            return productService.addProduct(product);
        } catch (Exception e) {
            return new ResponseModel("Error al intentar registrar producto", null, e.getMessage());
        }
    }

    @GetMapping("/obtener-productos")
    public ResponseModel getProducts() {
        try {
            return productService.findAllProducts();
        }catch (Exception e) {
            return new ResponseModel("Error al obtener productos", null, e.getMessage());
        }
    }

    @PostMapping("/actualizar-producto")
    public ResponseModel updateProduct(@RequestBody ProductModel product) {
        try {
            return productService.updateProduct(product);
        } catch (Exception e) {
            return new ResponseModel("Error al intentar registrar producto", null, e.getMessage());
        }
    }

}
