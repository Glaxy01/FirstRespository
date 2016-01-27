package test.raindrop.com.test;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Author RainDrop
 * 2016/1/9
 * 14:17.
 */
public class ScrollViewActivity extends Activity implements View.OnClickListener {
    private static final String TAG = "ScrollViewActivity";
    private LinearLayout mContainer;
    private TextView mChild;

    static {
        System.loadLibrary("JniTest");
    }

    public native String getStringFromNative();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_measure);
        mContainer = (LinearLayout) findViewById(R.id.container);
        mContainer.setOnClickListener(this);
        findViewById(R.id.child).setOnClickListener(this);

//        mChild.setText(getStringFromNative());
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.child:

                mContainer.scrollBy(30, 30);

                break;
        }
    }
}
