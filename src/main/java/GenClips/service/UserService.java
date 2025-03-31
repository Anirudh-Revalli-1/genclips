package GenClips.service;

import GenClips.data.User;
import GenClips.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

  @Autowired
  private UserRepository userRepository;

  public void createNewUser(User user) {
    userRepository.save(user);
  }
}
