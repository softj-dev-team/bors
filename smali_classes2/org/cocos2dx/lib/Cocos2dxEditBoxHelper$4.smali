.class final Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setFont(ILjava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fontName:Ljava/lang/String;

.field final synthetic val$fontSize:F

.field final synthetic val$index:I


# direct methods
.method constructor <init>(ILjava/lang/String;F)V
    .locals 0

    .line 253
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontSize:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 256
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$500()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_3

    .line 259
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    const-string v3, ".ttf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to create ttf type face: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cocos2dxEditBoxHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_1
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 276
    :goto_0
    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;->val$fontSize:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 277
    invoke-virtual {v0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextSize(IF)V

    .line 279
    :cond_2
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method
