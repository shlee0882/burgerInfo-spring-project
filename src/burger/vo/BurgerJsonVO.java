package burger.vo;

import lombok.Data;

@Data
public class BurgerJsonVO {

	  private Integer product_no;			//	��ǰ��ȣ
	  private String chain_no;     			//	ü�ι�ȣ
	  private String chain_name;     	//	ü�θ�
	  private String menu_name;      	//	�޴���
	  private String single_price;			//	��ǰ����
	  private String set_price;				//	��Ʈ����
	  private String calory;					//	Į�θ�
	  private String display_yn;     		//	���ÿ���
	  private String img_url;        		//	�̹��� url
	
}
