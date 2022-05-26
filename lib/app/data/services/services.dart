import 'dart:convert';

import 'package:flutter_lms_cambaya/app/data/models/chat_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/grub_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/guru_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/jadwal_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/kelas_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/lapor_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/nilai_ujian_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/user_model.dart';
import 'package:flutter_lms_cambaya/shared/shared.dart';
import 'package:http/http.dart' as http;
import 'package:get_storage/get_storage.dart';

part 'auth_services.dart';
part 'kelas_services.dart';
part 'jadwal_services.dart';
part 'guru_services.dart';
part 'nilai_services.dart';
part 'lapor_services.dart';
part 'chat_services.dart';
