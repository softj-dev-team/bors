.class public final Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# static fields
.field private static final HORIZONTAL_ALIGN_CENTER:I = 0x3

.field private static final HORIZONTAL_ALIGN_LEFT:I = 0x1

.field private static final HORIZONTAL_ALIGN_RIGHT:I = 0x2

.field private static final VERTICAL_ALIGN_BOTTOM:I = 0x2

.field private static final VERTICAL_ALIGN_CENTER:I = 0x3

.field private static final VERTICAL_ALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    if-eqz v9, :cond_7

    if-nez v10, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v0, v9, 0x1

    int-to-float v0, v0

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    const/high16 v13, 0x3f800000    # 1.0f

    add-float v2, v11, v13

    const/4 v14, 0x0

    if-nez p6, :cond_3

    :cond_1
    int-to-float v3, v9

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    int-to-float v0, v10

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    :cond_2
    sub-float/2addr v2, v13

    .line 122
    invoke-static {v8, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    float-to-int v1, v0

    .line 123
    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I

    move-result v1

    int-to-float v1, v1

    .line 125
    invoke-virtual {v12, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    cmpg-float v3, v2, v14

    if-gtz v3, :cond_1

    .line 127
    invoke-virtual {v12, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    :cond_3
    :goto_0
    int-to-float v3, v10

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_4

    int-to-float v1, v9

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    :cond_4
    sub-float v15, v2, v13

    .line 135
    new-instance v7, Landroid/text/StaticLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 p6, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 136
    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 137
    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    .line 139
    invoke-virtual {v12, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    cmpg-float v2, v15, v14

    if-gtz v2, :cond_6

    .line 142
    invoke-virtual {v12, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 148
    :cond_5
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_6
    move v2, v15

    goto :goto_0

    .line 112
    :cond_7
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZIIIIFZIZ)Z
    .locals 19

    move-object/from16 v7, p0

    move/from16 v0, p2

    move/from16 v8, p8

    move/from16 v9, p17

    .line 160
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    and-int/lit8 v10, p7, 0xf

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v10, v12, :cond_1

    if-eq v10, v11, :cond_0

    :goto_0
    move/from16 v2, p18

    move-object v13, v1

    move-object/from16 v1, p1

    goto :goto_1

    .line 164
    :cond_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 167
    :cond_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 175
    :goto_1
    invoke-static {v1, v0, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;IZ)Landroid/text/TextPaint;

    move-result-object v14

    if-eqz p10, :cond_2

    .line 178
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v1, p15

    .line 179
    invoke-virtual {v14, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :cond_2
    if-gtz v8, :cond_3

    .line 185
    invoke-static {v7, v14}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v15, v1

    goto :goto_2

    :cond_3
    move v15, v8

    :goto_2
    const/4 v6, 0x1

    if-ne v9, v6, :cond_4

    if-nez p16, :cond_4

    .line 194
    invoke-static {v7, v14}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 195
    new-instance v15, Landroid/text/StaticLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v4, v13

    const/4 v13, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    if-ne v9, v12, :cond_5

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    move-object v3, v13

    move-object v5, v14

    const/4 v12, 0x1

    move/from16 v6, p16

    .line 198
    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->calculateShrinkTypeFace(Ljava/lang/String;IILandroid/text/Layout$Alignment;FLandroid/text/TextPaint;Z)Landroid/graphics/Typeface;

    goto :goto_3

    :cond_5
    const/4 v12, 0x1

    .line 200
    :goto_3
    new-instance v17, Landroid/text/StaticLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v15

    move-object v4, v13

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v15, v17

    .line 203
    :goto_4
    invoke-virtual {v15}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 204
    invoke-virtual {v15}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 206
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez p9, :cond_6

    move/from16 v3, p9

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_5
    if-ne v9, v12, :cond_7

    if-nez p16, :cond_7

    if-lez v8, :cond_7

    move v2, v8

    :cond_7
    const/4 v4, 0x0

    if-eqz v2, :cond_e

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    if-ne v10, v11, :cond_9

    sub-int v0, v2, v0

    const/4 v5, 0x2

    .line 224
    div-int/2addr v0, v5

    goto :goto_6

    :cond_9
    const/4 v5, 0x2

    if-ne v10, v5, :cond_a

    sub-int v0, v2, v0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    shr-int/lit8 v6, p7, 0x4

    and-int/lit8 v6, v6, 0xf

    if-eq v6, v5, :cond_c

    if-eq v6, v11, :cond_b

    goto :goto_7

    :cond_b
    sub-int v1, v3, v1

    .line 235
    div-int/lit8 v4, v1, 0x2

    goto :goto_7

    :cond_c
    sub-int v4, v3, v1

    .line 242
    :goto_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    int-to-float v3, v4

    .line 244
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p10, :cond_d

    move/from16 v0, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    .line 247
    invoke-virtual {v14, v5, v0, v3, v4}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 248
    invoke-virtual {v15, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 250
    :cond_d
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 251
    invoke-virtual {v14, v5, v0, v3, v4}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 252
    invoke-virtual {v15, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 254
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    return v12

    :cond_e
    :goto_8
    return v4
.end method

.method public static getFontSizeAccordingHeight(I)I
    .locals 8

    .line 311
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 312
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 314
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    int-to-float v6, v5

    .line 319
    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v6, 0x6

    const-string v7, "SghMNy"

    .line 321
    invoke-virtual {v0, v7, v2, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v5, v5, 0x1

    .line 325
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p0, v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-eqz p0, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 300
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 301
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 302
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2

    .line 334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 338
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 339
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 340
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 342
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 343
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextHeight(Ljava/lang/String;IFLandroid/graphics/Typeface;)I
    .locals 9

    .line 85
    new-instance v7, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {v7, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 86
    invoke-virtual {v7, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 87
    invoke-virtual {v7, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 v8, 0x0

    :cond_0
    if-ge p3, p2, :cond_1

    const/4 v4, 0x1

    int-to-float v5, p1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p3

    move v3, p2

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 v8, v8, 0x1

    if-nez v0, :cond_0

    .line 104
    :cond_1
    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p0, p1

    int-to-float p1, v8

    mul-float p1, p1, p0

    float-to-double p0, p1

    .line 106
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 288
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    .line 293
    invoke-static {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    return-void
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;IZ)Landroid/text/TextPaint;
    .locals 3

    .line 259
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    .line 260
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 261
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const-string v1, ".ttf"

    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 266
    :try_start_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 268
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error to create ttf type face: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cocos2dxBitmap"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 278
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 69
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    return-void
.end method
