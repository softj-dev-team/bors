.class Lorg/cocos2dx/lib/Cocos2dxWebView$1;
.super Landroid/webkit/WebChromeClient;
.source "Cocos2dxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 120
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$000(Lorg/cocos2dx/lib/Cocos2dxWebView;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$000(Lorg/cocos2dx/lib/Cocos2dxWebView;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$002(Lorg/cocos2dx/lib/Cocos2dxWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 124
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$100(Lorg/cocos2dx/lib/Cocos2dxWebView;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 129
    :try_start_0
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$200(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "PhotoPath"

    .line 130
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$300(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p2, p3

    .line 133
    :goto_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to create Image File"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p2, :cond_2

    .line 137
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$302(Lorg/cocos2dx/lib/Cocos2dxWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "output"

    .line 138
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    move-object p3, p1

    .line 144
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    new-array v1, p2, [Landroid/content/Intent;

    aput-object p3, v1, v0

    goto :goto_2

    :cond_3
    new-array v1, v0, [Landroid/content/Intent;

    .line 158
    :goto_2
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.CHOOSER"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.INTENT"

    .line 159
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TITLE"

    const-string v0, "Image Chooser"

    .line 161
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.INITIAL_INTENTS"

    .line 162
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$100(Lorg/cocos2dx/lib/Cocos2dxWebView;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, p3, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return p2
.end method
