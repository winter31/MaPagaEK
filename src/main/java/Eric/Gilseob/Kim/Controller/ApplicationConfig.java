package Eric.Gilseob.Kim.Controller;

import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.elasticmapreduce.model.Application;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;

import Eric.Gilseob.Kim.Service.CallAWSAccessKey;

@Configuration
@ComponentScan(basePackageClasses = Application.class, excludeFilters = @Filter({Controller.class, Configuration.class}))
public class ApplicationConfig {
	
	private CallAWSAccessKey CAAK = new CallAWSAccessKey();
	String AWSid = CAAK.getAccessKey()[0];
	String AWSPW = CAAK.getAccessKey()[1];
	String AWSFileName = "PhotoBoard";
   
   @Bean
   public static PropertyPlaceholderConfigurer propertyPlaceholderConfigurer() {
	PropertyPlaceholderConfigurer ppc = new PropertyPlaceholderConfigurer();
	ppc.setLocations(new Resource[] {
		new ClassPathResource("/amazon.properties")
        });
	return ppc;
   }
	
   @Bean
   public AWSCredentials credential() {
   	return new BasicAWSCredentials(AWSid, AWSPW);
   }
	
   @Bean
   public AmazonS3 s3client() {
 	return new AmazonS3Client(credential()); 
   }
}