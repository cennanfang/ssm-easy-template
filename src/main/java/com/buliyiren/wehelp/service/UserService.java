package com.buliyiren.wehelp.service;

import com.buliyiren.wehelp.mapper.UserFunMapper;
import com.buliyiren.wehelp.model.User;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by chenkaihua on 15-9-15.
 */
@Service
public class UserService  {

    @Autowired
    UserFunMapper userMapper;



    @RequiresRoles("admin")
    public void deleteWithAdminRoleById(int id){
        userMapper.delete(id);
    }


    public User getUserById(int id){
        return userMapper.select(id);
    }



    public boolean isExist(User user){
        return  true;
    }


    public void addUser(User user){
        userMapper.insert(user);
    }


    public List<User> getUsers(User user){

        return userMapper.selectParam(null);
    }


    public void deleteById(int id){
        userMapper.delete(id);

    }

    public void update(User user){
        userMapper.update(user);
    }


}
