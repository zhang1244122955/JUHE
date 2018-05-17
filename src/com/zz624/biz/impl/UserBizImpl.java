package com.zz624.biz.impl;

import com.zz624.biz.UserBiz;
import com.zz624.dao.UserDao;
import com.zz624.dao.impl.UserDaoImpl;
import com.zz624.entry.User;
import com.zz624.matchbean.FMatch;
import com.zz624.util.FaceMatch;

public class UserBizImpl implements UserBiz{
	private UserDao dao;
	
	public UserBizImpl() {
		super();
		this.dao = new UserDaoImpl();
	}

	@Override
	public int login(String username, String password) {
		boolean usernameIsExist=this.dao.usernameIsExist(username);	
		System.out.println(usernameIsExist);
		if (!usernameIsExist) {
			return 10000001;//用户名不存在
			
		}else{
			boolean passwordIsTrue=this.dao.selectUser(username).getPassword().equals(password);
			if (!passwordIsTrue) {
				return 10000002;//密码错误
			}else {
				return 10002000;//用户名密码正确，允许登录
			}
		}
		
	}

	@Override
	public int rejister(String username, String password, String email) {
		//判断用户名和邮箱都不存在时才可进行插入
		if (!this.dao.usernameIsExist(username)) {
			if (!this.dao.emailIsExist(email)) {
				this.dao.insertUser(username, password, email);
				return 10002000;
			}else {
				return 10001002; //邮箱已存在
			}
			
		}
		return 10001001;//用户名已存在
	}

	@Override
	public int login_face(String username, String base64) {
		boolean usernameIsExist=this.dao.usernameIsExist(username);
		//System.out.println(passwordIsTrue);
		if (!usernameIsExist) {
			return 10000001;//用户名不存在
		}else if (this.dao.selectUser(username).getFacetoken()==null) {
			return 10000003;//未开通人脸登录
		}else{
			//获得比对结果
			FMatch fMatch = FaceMatch.match(base64, this.dao.selectUser(username).getFacetoken());
			//解析比对结果
			switch (fMatch.getError_code()) {
			case 0:
				// 正常比对完毕
				if (fMatch.getResult().getScore() >= 80) {
					return 10002000;//用户名脸部信息匹配成功，允许登录
				}else{
					return 10000004;//用户名脸部信息匹配失败
				}
			case 223113:
				return 10000010;//人脸有被遮挡
			case 223114:
				return 10000011;//人脸模糊
			case 223115:
				return 10000012;//人脸光照不好
			case 223116:
				return 10000013;//人脸不完整
			case 223120:
				return 10000014;//活体检测未通过
			case 223121:
				return 10000015;//质量检测未通过 右眼遮挡程度过高
			case 223122:
				return 10000016;//质量检测未通过 左眼遮挡程度过高
			case 223123:
				return 10000017;//质量检测未通过 右脸遮挡程度过高
			case 223124:
				return 10000018;//质量检测未通过 左脸遮挡程度过高
			case 223125:
				return 10000019;//质量检测未通过 下巴遮挡程度过高
			case 223126:
				return 10000020;//质量检测未通过 鼻子遮挡程度过高
			case 223127:
				return 10000021;//质量检测未通过 嘴巴遮挡程度过高
			default:
				return 10000100;//发现未知错误
			}
		}
	}

	@Override
	public int login_face(String username, String password, String base64) {
		boolean usernameIsExist=this.dao.usernameIsExist(username);
		boolean passwordIsTrue=this.dao.selectUser(username).getPassword().equals(password);
		if (!usernameIsExist) {
			return 10000001;//用户名不存在
		}else if (!passwordIsTrue) {
			return 10000002;//密码错误
		}else{
			//用户名密码正确录入人脸
			//获得人脸信息
			FMatch fMatch = FaceMatch.match(base64);
			//解析人脸结果
			switch (fMatch.getError_code()) {
			case 0:
				// 正常检测完毕
				//更新人脸信息
				User user = dao.selectUser(username);
				user.setFacetoken(fMatch.getResult().getFace_list().get(0).getFace_token());
				dao.updateUser(user);
				return 10002000;//用户名脸部信息匹配成功，允许登录
				
			case 223113:
				return 10000010;//人脸有被遮挡
			case 223114:
				return 10000011;//人脸模糊
			case 223115:
				return 10000012;//人脸光照不好
			case 223116:
				return 10000013;//人脸不完整
			case 223120:
				return 10000014;//活体检测未通过
			case 223121:
				return 10000015;//质量检测未通过 右眼遮挡程度过高
			case 223122:
				return 10000016;//质量检测未通过 左眼遮挡程度过高
			case 223123:
				return 10000017;//质量检测未通过 右脸遮挡程度过高
			case 223124:
				return 10000018;//质量检测未通过 左脸遮挡程度过高
			case 223125:
				return 10000019;//质量检测未通过 下巴遮挡程度过高
			case 223126:
				return 10000020;//质量检测未通过 鼻子遮挡程度过高
			case 223127:
				return 10000021;//质量检测未通过 嘴巴遮挡程度过高
			default:
				return 10000100;//发现未知错误
			}
		}
	}

	@Override
	public int emailValidate(String email) {
		if (this.dao.emailIsExist(email)) {
			return 10001002;//邮箱重复			
		};
		return 10002000;//邮箱不存在可以进行注册
		
	}

}
