package cl.duoc.fullstack_back_products.service;

import cl.duoc.fullstack_back_products.models.ProductModel;
import cl.duoc.fullstack_back_products.models.ResponseModel;
import org.springframework.stereotype.Service;

@Service
public interface ProductService {
    ResponseModel addProduct(ProductModel product);

    ResponseModel updateProduct(ProductModel product);

    ResponseModel deleteProduct(ProductModel product);

    ResponseModel findProductById(int id);

    ResponseModel findAllProducts();
}
