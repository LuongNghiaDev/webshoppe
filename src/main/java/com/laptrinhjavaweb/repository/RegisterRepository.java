package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface RegisterRepository extends JpaRepository<UserEntity,Long> {

    @Modifying
    @Query(value = "insert into user_role (userid,roleid) values (userid:userid,roleid:roleid)" ,nativeQuery = true)
    void insertUser(@Param("userid") Long userid, @Param("roleid") Long roleid);
}
