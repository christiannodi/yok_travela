import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final double horizontalPadding;

  RegisterPage({this.horizontalPadding = 10});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  bool _isUsernameFocused = false;
  bool _isEmailFocused = false;
  bool _isPasswordFocused = false;
  bool _isRePasswordFocused = false;
  bool _isPressed = false;
  double _buttonOpacity = 1.0; // Opacity untuk tombol

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  void _handleRegister() {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String rePassword = _rePasswordController.text;

    print('Username: $username');
    print('Email: $email');
    print('Password: $password');
    print('Re-Password: $rePassword');

    // Mulai animasi menghilangkan tombol selama 2 detik
    setState(() {
      _isPressed = true;
      _buttonOpacity = 0.0; // Ubah opacity menjadi 0
    });

    // Setelah 2 detik, kembalikan tombol ke keadaan semula
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _isPressed = false;
        _buttonOpacity = 1.0; // Kembalikan opacity menjadi 1
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start, // Pindahkan teks ke kiri
                      children: [
                        const SizedBox(height: 150),

                        // "Buat Akun" di sebelah kiri
                        Text(
                          'Buat Akun',
                          style: GoogleFonts.tiltWarp(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left, // Menyelaraskan teks ke kiri
                        ),

                        const SizedBox(height: 0),

                        // Sub-title di bawahnya, juga di kiri
                        Text(
                          ' Gabung dan eksplor tempat menarik',
                          textAlign: TextAlign.left, // Menyelaraskan teks ke kiri
                          style: GoogleFonts.tienne(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Username field with drop shadow and active effect
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
                          child: FocusScope(
                            onFocusChange: (isFocused) {
                              setState(() {
                                _isUsernameFocused = isFocused;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                border: Border.all(
                                  color: _isUsernameFocused
                                      ? Colors.blue
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/username.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      controller: _usernameController,
                                      decoration: InputDecoration(
                                        hintText: 'username',
                                        hintStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          color: Colors.black38,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Email field with drop shadow and active effect
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
                          child: FocusScope(
                            onFocusChange: (isFocused) {
                              setState(() {
                                _isEmailFocused = isFocused;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                border: Border.all(
                                  color: _isEmailFocused
                                      ? Colors.blue
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/email.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                        hintText: 'email',
                                        hintStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          color: Colors.black38,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Password field with drop shadow and active effect
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
                          child: FocusScope(
                            onFocusChange: (isFocused) {
                              setState(() {
                                _isPasswordFocused = isFocused;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                border: Border.all(
                                  color: _isPasswordFocused
                                      ? Colors.blue
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/password.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        hintText: 'password',
                                        hintStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          color: Colors.black38,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Re-Password field with drop shadow and active effect
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
                          child: FocusScope(
                            onFocusChange: (isFocused) {
                              setState(() {
                                _isRePasswordFocused = isFocused;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                border: Border.all(
                                  color: _isRePasswordFocused
                                      ? Colors.blue
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/password.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      controller: _rePasswordController,
                                      decoration: InputDecoration(
                                        hintText: 're-password',
                                        hintStyle: GoogleFonts.aBeeZee(
                                          fontSize: 16,
                                          color: Colors.black38,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),

                        // Register button with opacity animation
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
                          child: GestureDetector(
                            onTapDown: (_) {
                              setState(() {
                                _isPressed = true;
                              });
                            },
                            onTapUp: (_) {
                              _handleRegister(); // Menangani register setelah tombol ditekan
                            },
                            onTapCancel: () {
                              setState(() {
                                _isPressed = false;
                              });
                            },
                            child: AnimatedOpacity(
                              duration: Duration(seconds: 2), // Durasi perubahan opacity
                              opacity: _buttonOpacity, // Menggunakan opacity yang diatur
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _isPressed ? Colors.blue[200] : Colors.black,
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 16),
                                child: Center(
                                  child: Text(
                                    'Daftar',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.02,
                    left: screenWidth * 0.0, // Responsif posisi horizontal
                    child: Container(
                      width: screenWidth * 1.8, // Responsif ukuran lebar gambar
                      height: screenHeight * 0.28, // Responsif ukuran tinggi gambar
                      child: Image.asset('assets/register.png'), // Gambar untuk halaman register
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
