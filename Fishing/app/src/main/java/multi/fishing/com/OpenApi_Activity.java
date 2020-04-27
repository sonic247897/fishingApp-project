package multi.fishing.com;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.webkit.WebView;

public class OpenApi_Activity extends AppCompatActivity {
    // WebView를 통해 opneApi.html 파일을 파싱하여 화면에 뿌려준다.
    WebView mWebView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.openapi_activity);

        mWebView = (WebView) findViewById(R.id.webView);
        // opneApi.html 파일은 assets 디렉토리에 저장됨
        mWebView.loadUrl("file:///android_asset/openApi.html");
        // WebView에서 javascirpt가 실행될 수 있게 설정
        mWebView.getSettings().setJavaScriptEnabled(true);

    }
}
