import '../../config/api_config.dart';
import '../../dto/user_authentication/login_dto.dart';
import '../api_client.dart';

class LoginService {
  final ApiClient apiClient = ApiClient(baseUrl: ApiConfig.baseUrl);

  Future<LoginResponseDTO> authenticateUser(
      String email, String password) async {
    final Map<String, dynamic> body = await apiClient.post(
      ApiConfig.getLoginUrl(),
      headers: {"content-type": "application/json"},
      body: LoginRequestDTO(email, password).toJson(),
    );
    return LoginResponseDTO.fromJson(body);
  }
}
