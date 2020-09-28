package br.dev.jodairneves.uri_online_judge;

import android.os.Bundle;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "evento";
    Random random = new Random();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                switch (call.method) {
                    case "1001":
                        result.success(exe1001());
                        break;
                    case "1009":
                        result.success(exe1009());
                        break;
                    case "1018":
                        result.success(exe1018());
                        break;
                    case "2344":
                        result.success(exe2344());
                        break;
                    case "3040":
                        result.success(exe3040());
                        break;
                }

            }
        });
    }

    protected String exe1001() {
        int a, b, X;
        a = (int) (Math.random() * 10) + 1;
        b = (int) (Math.random() * 10) + 1;

        X = a + b;
        return "X = " + X;
    }

    protected ArrayList<String> exe1009() {
        ArrayList<String> valores = new ArrayList();
        Locale.setDefault(Locale.US);
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = leftLimit + (int)
                    (random.nextFloat() * (rightLimit - leftLimit + 1));
            buffer.append((char) randomLimitedInt);
        }

        String nome = buffer.toString();
        double sal = (double) (Math.random() * 1000) + 1;
        double vendas = (double) (Math.random() * 10) + 1;
        double comissao = vendas * 0.15;
        double total = sal + comissao;

        valores.add(nome);
        valores.add(String.format("%.2f", total));

        return valores;
    }

    protected ArrayList<String> exe1018() {
        int valor = (int) (Math.random() * 1000000) + 1;
        ArrayList<String> valores = new ArrayList();

        valores.add(Integer.toString(valor));

        valores.add(valor / 100 + " nota(s) de R$ 100,00");
        valor = valor % 100;
        valores.add(valor / 50 + " nota(s) de R$ 50,00");
        valor = valor % 50;
        valores.add(valor / 20 + " nota(s) de R$ 20,00");
        valor = valor % 20;
        valores.add(valor / 10 + " nota(s) de R$ 10,00");
        valor = valor % 10;
        valores.add(valor / 5 + " nota(s) de R$ 5,00");
        valor = valor % 5;
        valores.add(valor / 2 + " nota(s) de R$ 2,00");
        valor = valor % 2;
        valores.add(valor / 1 + " nota(s) de R$ 1,00");
        return valores;
    }

    protected String exe2344() {
        int nota = (int) (Math.random() * 100) + 1;

        if (nota == 0) {
            return "E";
        } else if (nota >= 1 && nota <= 35) {
            return "D";
        } else if (nota >= 36 && nota <= 60) {
            return "C";
        } else if (nota >= 61 && nota <= 85) {
            return "B";
        } else if (nota >= 86 && nota <= 100) {
            return "A";
        }
        return null;
    }

    protected String exe3040() {
        int n, h, d, g;

        n = (int) (Math.random() * 10000) + 1;

        for (int i = 0; i < n; i++) {
            h = (int) (Math.random() * 1141) + 1;
            d = (int) (Math.random() * 1141) + 1;
            g = (int) (Math.random() * 1141) + 1;

            if (h >= 200 && h <= 300 && d >= 50 && g >= 150) {
                return "Sim";
            } else {
                return "Nao";
            }
        }
        return null;
    }
}