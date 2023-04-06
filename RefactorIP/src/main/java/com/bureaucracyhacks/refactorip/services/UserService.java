package com.bureaucracyhacks.refactorip.services;

import com.bureaucracyhacks.refactorip.exceptions.UserNotFoundException;
import com.bureaucracyhacks.refactorip.models.UserJPA;
import com.bureaucracyhacks.refactorip.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
        UserJPA user = userRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username or email : " + usernameOrEmail));

        Set<GrantedAuthority> authorities = user.getRoles().stream()
                .map(role -> new SimpleGrantedAuthority(role.getRole_id() == 0 ? "USER" : "ADMIN"))
                .collect(Collectors.toSet());

        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), authorities);
    }

    public void registerUser(String name, String surname, String username, String email, String password, String phone_number) {
        UserJPA user = new UserJPA();
        user.setName(name);
        user.setSurname(surname);
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(passwordEncoder.encode(password));
        user.setPhone_number(phone_number);
        String text = "2011-10-02 18:48:05.123456";
        Timestamp ts = Timestamp.valueOf(text);
        user.setCreated_at(ts.toString());
        userRepository.save(user);
    }

    public boolean isUsernameTaken(String username) {
        return userRepository.findByUsername(username).isPresent();
    }

    public boolean isEmailTaken(String email) {
        return userRepository.findByEmail(email).isPresent();
    }

    public void updateUser(String username, String email, String phone_number, String password, String name, String surname) {
        UserJPA user;
        try {
            user = userRepository.findByUsername(username).orElseThrow();
        }
        catch(NoSuchElementException e)
        {
            throw new UserNotFoundException();
        }

        if(email != null)
            user.setEmail(email);

        if(phone_number != null)
            user.setPhone_number(phone_number);

        if(name != null)
            user.setName(name);

        if(surname != null)
            user.setSurname(surname);

        if(password != null)
            user.setPassword(passwordEncoder.encode(password));


        userRepository.save(user);
    }

    public void deleteUser(String username) {
        UserJPA user;
        try {
            user = userRepository.findByUsername(username).orElseThrow();
        }
        catch(NoSuchElementException e)
        {
            throw new UserNotFoundException();
        }
        userRepository.delete(user);
    }

}
