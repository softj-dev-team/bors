.class final Lorg/cocos2dx/javascript/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Lcom/github/dfqin/grantor/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/ImagePicker;->openPhoto(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_allowsEditing:Z

.field final synthetic val$_height:I

.field final synthetic val$_width:I


# direct methods
.method constructor <init>(ZII)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/cocos2dx/javascript/ImagePicker$1;->val$_allowsEditing:Z

    iput p2, p0, Lorg/cocos2dx/javascript/ImagePicker$1;->val$_width:I

    iput p3, p0, Lorg/cocos2dx/javascript/ImagePicker$1;->val$_height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionDenied([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public permissionGranted([Ljava/lang/String;)V
    .locals 2

    .line 104
    iget-boolean p1, p0, Lorg/cocos2dx/javascript/ImagePicker$1;->val$_allowsEditing:Z

    iget v0, p0, Lorg/cocos2dx/javascript/ImagePicker$1;->val$_width:I

    iget v1, p0, Lorg/cocos2dx/javascript/ImagePicker$1;->val$_height:I

    invoke-static {p1, v0, v1}, Lorg/cocos2dx/javascript/ImagePicker;->openPhoto(ZII)V

    return-void
.end method
