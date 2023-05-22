.class Lcom/sdkbox/adbooster/ImageCache$BitmapTask;
.super Landroid/os/AsyncTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/adbooster/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private _filename:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _url:Ljava/lang/String;

.field final synthetic this$0:Lcom/sdkbox/adbooster/ImageCache;


# direct methods
.method constructor <init>(Lcom/sdkbox/adbooster/ImageCache;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->this$0:Lcom/sdkbox/adbooster/ImageCache;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 42
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_id:Ljava/lang/String;

    const/4 v0, 0x1

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_filename:Ljava/lang/String;

    const/4 v0, 0x2

    .line 44
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_url:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->this$0:Lcom/sdkbox/adbooster/ImageCache;

    invoke-virtual {v0, p1}, Lcom/sdkbox/adbooster/ImageCache;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, ""

    const-string v1, "AdBooster_download_fail"

    if-eqz p1, :cond_1

    .line 52
    iget-object v2, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->this$0:Lcom/sdkbox/adbooster/ImageCache;

    iget-object v3, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_url:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sdkbox/adbooster/ImageCache;->saveBmpToSd(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Lcom/sdkbox/adbooster/AdBoosterEvent;

    iget-object v0, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_url:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/sdkbox/adbooster/AdBoosterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdBooster"

    invoke-static {v0, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_0
    new-instance p1, Lcom/sdkbox/adbooster/AdBoosterEvent;

    iget-object v2, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_id:Ljava/lang/String;

    invoke-direct {p1, v2, v0}, Lcom/sdkbox/adbooster/AdBoosterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_1
    new-instance p1, Lcom/sdkbox/adbooster/AdBoosterEvent;

    iget-object v2, p0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->_id:Ljava/lang/String;

    invoke-direct {p1, v2, v0}, Lcom/sdkbox/adbooster/AdBoosterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
