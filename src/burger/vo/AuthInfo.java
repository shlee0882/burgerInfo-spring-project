package burger.vo;

import lombok.Data;

@Data
public class AuthInfo {

	  private Integer admin_no;		//	���ι�ȣ
	  private String id;     				//	���̵�
	  private String pass;      	//	�н�����
	  private String name;      			//	�̸�
	  private String use_active;      	//	Ȱ������
	  private boolean rememberId;

}
