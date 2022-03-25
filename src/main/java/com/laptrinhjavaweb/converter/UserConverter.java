package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import org.springframework.stereotype.Component;

import javax.management.relation.Role;

@Component
public class UserConverter {

    public UserDTO toDto(UserEntity entity){
        UserDTO result = new UserDTO();
        result.setId(entity.getId());
        result.setUserName(entity.getUserName());
        result.setPassWord(entity.getPassWord());
        result.setFullName(entity.getFullName());
        result.setStatus(1);
        return result;
    }

    public UserEntity toEntity(UserDTO dto){
        UserEntity result = new UserEntity();
        result.setUserName(dto.getUserName());
        result.setPassWord(dto.getPassWord());
        result.setFullName(dto.getFullName());
        result.setStatus(1);
        return result;
    }
}
