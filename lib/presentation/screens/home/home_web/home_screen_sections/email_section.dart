import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';

class EmailSection extends StatefulWidget {
  const EmailSection({super.key});

  @override
  State<EmailSection> createState() => _EmailSectionState();
}

class _EmailSectionState extends State<EmailSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle titleStyle =
        TextStyle(fontSize: size.width * 0.042, fontWeight: FontWeight.bold);
    const subtitleStyle = TextStyle(fontSize: 20);
    return SliverToBoxAdapter(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            children: [
              CustomGradientText('Contact me', style: titleStyle),
              const SizedBox(height: 20),
              CustomInput(
                style: subtitleStyle,
                controller: _emailController,
                label: 'Email:',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Escribe una dirección de correo';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              CustomInput(
                style: subtitleStyle,
                controller: _subjectController,
                label: 'Subject:',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Escribe un asunto';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomInput(
                style: subtitleStyle,
                label: 'Body:',
                controller: _bodyController,
                minLines: 6,
                maxLines: 8,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Escribe una dirección de correo';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomFilledButton(
                onPressed: () {
                  sendEmail();
                },
                label: 'Send',
                variant: ButtonVariant.bordered,
              )
            ],
          ),
        ),
      ),
    );
  }

  void sendEmail(){
    if(_formKey.currentState!.validate()){
      
    }
  }
}
