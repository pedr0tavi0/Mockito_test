import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import '../lib/auth_service.dart';

// Gera o mock de AuthService
@GenerateMocks([AuthService])
import 'auth_service_test.mocks.dart';

void main() {
  group('AuthService Test with Mockito', () {
    late MockAuthService mockAuthService;

    setUp(() {
      mockAuthService = MockAuthService();
    });

    test('should return true when login succeeds', () async {
      when(mockAuthService.login('user', 'pass')).thenAnswer((_) async => true);

      final result = await mockAuthService.login('user', 'pass');
      expect(result, isTrue);
    });
  });
}
