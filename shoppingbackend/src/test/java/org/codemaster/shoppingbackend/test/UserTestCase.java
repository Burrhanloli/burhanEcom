/*package org.codemaster.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.codemaster.shoppingbackend.dao.ProductDAO;
import org.codemaster.shoppingbackend.dto.Product;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import org.codemaster.shoppingbackend.dto.User;

public class UserTestCase {
private static AnnotationConfigApplicationContext context;
	
	
	private static ProductDAO productDAO;
	
	
	private Product product;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("org.codemaster");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
		
	}
	
	
	
	@Test
	public void testCRUDProduct() {
		
		// create operation
		product = new Product();
				
		product.setName("Oppo Selfie S53");
		product.setBrand("Oppo");
		product.setDescription("This is some description for oppo mobile phones!");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Something went wrong while inserting a new product!",
				true,productDAO.add(product));		
		assertEquals(product.getName(),product.getName() );
		
		// reading and updating the category
		product = productDAO.get(0);
		
		product.setName("Samsung Galaxy S7");
		assertEquals("Something went wrong while updating the existing record!",
				true,productDAO.update(product));		
				
		assertEquals("Something went wrong while deleting the existing record!",
				true,productDAO.delete(product));		
		
		// list
		assertEquals("Something went wrong while fetching the list of products!",
				6,productDAO.list().size());		
				
	}
		
	
	@Test
	public void testListActiveProducts() {
		assertEquals("Something went wrong while fetching the list of products!",
				0,productDAO.listActiveProducts().size());				
	} 
	
	
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Something went wrong while fetching the list of products!",
				0,productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something went wrong while fetching the list of products!",
				0,productDAO.listActiveProductsByCategory(1).size());
	} 
	
	@Test
	public void testGetLatestActiveProduct() {
		User user = new User();
		user.setFirstName("burhan");
		user.setEmail("burhanloli@gmail.com");
		user.setId(1);
		user.setRole("admin");
		user.setPassword("burhanl");
		assertEquals(user.getId(),user.getId() );
		
	} 
}
*/