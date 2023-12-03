import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutix/models/models.dart';
import 'package:flutix/shared/shared.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

part './auth.dart';
part './movie_api.dart';
