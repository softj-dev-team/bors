.class public Lzendesk/support/PicassoTransformations;
.super Ljava/lang/Object;
.source "PicassoTransformations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/PicassoTransformations$RoundedTransformation;,
        Lzendesk/support/PicassoTransformations$BlurTransformation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlurTransformation(Landroid/content/Context;)Lcom/squareup/picasso/Transformation;
    .locals 1

    .line 39
    new-instance v0, Lzendesk/support/PicassoTransformations$BlurTransformation;

    invoke-direct {v0, p0}, Lzendesk/support/PicassoTransformations$BlurTransformation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getRoundWithBorderTransformation(III)Lcom/squareup/picasso/Transformation;
    .locals 1

    .line 43
    new-instance v0, Lzendesk/support/PicassoTransformations$RoundedTransformation;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/PicassoTransformations$RoundedTransformation;-><init>(III)V

    return-object v0
.end method

.method public static getRoundedTransformation(I)Lcom/squareup/picasso/Transformation;
    .locals 1

    .line 35
    new-instance v0, Lzendesk/support/PicassoTransformations$RoundedTransformation;

    invoke-direct {v0, p0}, Lzendesk/support/PicassoTransformations$RoundedTransformation;-><init>(I)V

    return-object v0
.end method
