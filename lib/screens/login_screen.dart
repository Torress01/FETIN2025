import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50], // Fundo mais suave
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cabeçalho com tipografia destacada
            Column(
              children: [
                Text(
                  "Bem-vindo Motorista",
                  style: GoogleFonts.poppins(
                    // Usando Google Fonts (adicione o pacote google_fonts no pubspec.yaml)
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.indigo[900],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Entrar",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigo[700],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Formulário estilizado
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Numero de Identificação ou Linha",
                    labelStyle: TextStyle(color: Colors.indigo[800]),
                    prefixIcon: Icon(Icons.numbers, color: Colors.indigo[500]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.indigo[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Colors.indigo[500]!, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.indigo[800]),
                    prefixIcon: Icon(Icons.lock, color: Colors.indigo[500]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.indigo[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Colors.indigo[500]!, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Botão de Entrar personalizado
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo[600],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  textStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                child: const Text("Entrar"),
              ),
            ),

            const SizedBox(height: 20),

            // Link para criar conta
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RegisterScreen()),
              ),
              child: Text(
                "Criar conta",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.indigo[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
