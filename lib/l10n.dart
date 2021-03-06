library l10n;

import "dart:collection";
import 'package:logging/logging.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:dryice/dryice.dart' as di;

import "package:validate/validate.dart";

part "interfaces.dart";

part 'l10n/L10NImpl.dart';
part 'l10n/L10NTranslate.dart';

final L10NTranslate TRANSLATOR = new L10NTranslate();

/// Shortcut to get a L10N object
///
/// All \n, \r and more than one spaces will be stripped.
L10N l10n(final String msgid, [final Map<String, dynamic> vars = const {} ]) {
    return new L10N(msgid,vars);
}

/// Shortcut to get a L10N object
L10N gettext(final String msgid, [final Map<String, dynamic> vars = const {} ]) {
    return l10n(msgid,vars);
}

/// Shortcut to get a L10N object
L10N tr(final String msgid, [final Map<String, dynamic> vars = const {} ]) {
    return l10n(msgid,vars);
}


