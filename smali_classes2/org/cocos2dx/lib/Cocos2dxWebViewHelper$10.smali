.class final Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->stopLoading(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 198
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webViews:Landroid/util/SparseArray;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->stopLoading()V

    :cond_0
    return-void
.end method
