import 'dart:math';

import 'package:flutter/material.dart';
import 'package:urbetrack_challenge/widgets/widgets.dart';

const kAssetsSvgPath = 'assets/svg';
const kAssetsLottiePath = 'assets/lottie';

const kConnectionKey = '__connection__';
const kIsDarkKey = '__isDark__';

const kAppPadding = EdgeInsets.all(16);
const kBorderRadius = BorderRadius.all(Radius.circular(8));

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

extension SnackbarExtension on BuildContext {
  void showSuccessSnackBar(String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(buildSuccessSnackBar(this, message, duration));
  }

  void showErrorSnackBar(String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(buildErrorSnackBar(this, message, duration));
  }
}

SnackBar buildSuccessSnackBar(
    BuildContext context, String message, Duration duration) {
  return SnackBar(
    duration: duration,
    backgroundColor: Theme.of(context).colorScheme.onBackground,
    content: Row(
      children: [
        SnackBarTimer(duration, Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground),
        const SizedBox(width: 16),
        Text(message,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
      ],
    ),
  );
}

SnackBar buildErrorSnackBar(
    BuildContext context, String message, Duration duration) {
  return SnackBar(
    duration: duration,
    backgroundColor: Theme.of(context).colorScheme.error,
    content: Row(
      children: [
        SnackBarTimer(duration, Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground),
        const SizedBox(width: 16),
        Text(message,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
      ],
    ),
  );
}

String getStringFromList(List<String> list) {
  if (list.isEmpty) return '--';

  final listWithBullets = list.map((e) => '• $e').toList();
  return listWithBullets.join('\n');
}

Map<String, String> getRandomPhrase() {
  const phrases = [
    {
      "phrase": "La fuerza estará ya contigo… siempre.",
      "author": "Maestro Obi-Wan Kenobi",
      "movie": "Episodio IV: Una Nueva Esperanza"
    },
    {
      "phrase":
          "Miedo, ira, agresividad, el lado oscuro ellos son. Si algún día rigen tu vida, para siempre tu destino dominarán.",
      "author": "Maestro Yoda",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase":
          "¡Tú siempre con tus “NO PUEDE HACERSE”! ¿Es que escuchándome no estabas?",
      "author": "Maestro Yoda",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase":
          "Impresionante… ¡Muy impresionante! Controlas tu miedo, Obi-Wan te ha instruido bien…",
      "author": "Darth Vader",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase": "Tu presunción es tu debilidad.",
      "author": "Luke Skywalker",
      "movie": "Episodio VI: El Retorno del Jedi"
    },
    {
      "phrase":
          "El miedo es el camino hacia el Lado Oscuro, el miedo lleva a la ira, la ira lleva al odio, el odio lleva al sufrimiento. Veo mucho miedo en ti.",
      "author": "Maestro Yoda",
      "movie": "Episodio I: La Amenaza Fantasma"
    },
    {
      "phrase":
          "Concéntrate en el momento. Siente, no pienses, usa tu instinto.",
      "author": "Maestro Qui-Gon Jinn",
      "movie": "Episodio I: La Amenaza Fantasma"
    },
    {
      "phrase":
          "El tamaño no importa. Mírame a mí. Me juzgas por mi tamaño, ¿eh? Y no deberías, porque mi aliada es la fuerza, y una poderosa aliada es… ",
      "author": "Maestro Yoda",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase": "Sin duda, maravillosa la mente de un niño es.",
      "author": "Maestro Yoda",
      "movie": "Episodio II: El Ataque de los Clones"
    },
    {
      "phrase": "La guerra no lo hace a uno más grandioso.",
      "author": "Maestro Yoda",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase": "No lo intentes. Hazlo, o no lo hagas, pero no lo intentes.",
      "author": "Maestro Yoda",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase": "Difícil de ver el futuro es.",
      "author": "Maestro Yoda",
      "movie": "Episodio III: La venganza de los Sith"
    },
    {
      "phrase": "Su carencia de fe resulta molesta.",
      "author": "Darth Vader",
      "movie": "Episodio IV: Una Nueva Esperanza"
    },
    {
      "phrase": "Tus ojos pueden engañarte, no confíes en ellos.",
      "author": "Maestro Obi-Wan Kenobi",
      "movie": "Episodio IV: Una Nueva Esperanza"
    },
    {
      "phrase": "¿Quién es más loco: el loco o el loco que sigue al loco?",
      "author": "Maestro Obi-Wan Kenobi",
      "movie": "Episodio IV: Una Nueva Esperanza"
    },
    {
      "phrase": "Tu enfoque determina tu realidad.",
      "author": "Maestro Qui-Gon Jinn",
      "movie": "Episodio I: La Amenaza Fantasma"
    },
    {
      "phrase":
          "A veces no comprendo el comportamiento humano. Sólo intento hacer mi trabajo de la forma mas eficiente.",
      "author": "C-3PO",
      "movie": "Episodio V: El Imperio Contrataca"
    },
    {
      "phrase": "La capacidad de hablar no te hace inteligente.",
      "author": "Maestro Qui-Gon Jinn",
      "movie": "Episodio I: La Amenaza Fantasma"
    }
  ];

  final random = Random();
  final index = random.nextInt(phrases.length);
  return phrases[index];
}
