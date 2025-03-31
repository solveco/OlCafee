import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

bool? search(
  String? searchin,
  String? searchfor,
) {
  if (searchfor == null || searchin == null) {
    return null;
  }
  return searchin.toLowerCase().contains(searchfor.toLowerCase());
}

double? sumlist(List<double>? listtosum) {
  // sum list of double if any value null make it 0
  if (listtosum == null) {
    return null;
  }

  double sum = 0.0;
  for (double? value in listtosum) {
    sum += value ?? 0.0;
  }

  return sum;
}

int? sumlistint(List<int>? listtosum) {
  // sum list of integer
  if (listtosum == null || listtosum.isEmpty) {
    return null;
  }

  int sum = 0;
  for (int num in listtosum) {
    sum += num;
  }

  return sum;
}
