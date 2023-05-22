.class final Lcom/sdkbox/plugin/SDKBox$2;
.super Ljava/lang/Object;
.source "SDKBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBox;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 84
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->nOnStop()V

    return-void
.end method
