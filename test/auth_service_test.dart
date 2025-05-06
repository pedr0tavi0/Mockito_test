import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import '../lib/auth_service.dart';

// Gera o mock de AuthService
@GenerateMocks([AuthService])
import 'auth_service_test.mocks.dart';

void main() {
  group('AuthService Test com Mokito', () {
    late MockAuthService mockAuthService; //declara a variavel

    setUp(() {
      mockAuthService = MockAuthService(); // instancia um novo mock
    });

    test('Retorne true se o login tiver sucesso', () async {
      when(mockAuthService.login('user', 'pass'))
          .thenAnswer((_) async => true); //stub

      final result = await mockAuthService.login('user', 'pass');
      expect(result, isTrue);
    });
  });
}
