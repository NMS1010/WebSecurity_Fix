
package com.mdk.dao;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import com.mdk.models.User;
import com.mdk.paging.Pageble;

public interface IUserDAO {
	void insert(User user);
	void update(User user);
	void delete(int id);
	void updateWallet(int id, double eWallet);
	void updatePass(int id, String pass, String email);
	List<User> findBySearching(String keyword);
    List<User> findAll();
    List<User> findAllForReport();
    User findById(int id);
    List<User> top10Users_Orders();
    int count(String keyword);
    List<User> findAll(Pageble pageble, String keyword);
    User findOneByUsernameAndPassword(String username, String password) throws NoSuchAlgorithmException;
    int checkEmailExist(String email);
    int checkPhoneExist(String phone);
    int checkId_card(String id_card);
}
