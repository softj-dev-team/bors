.class final Lcom/sdkbox/plugin/SdkboxLog$1;
.super Ljava/lang/Object;
.source "SdkboxLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SdkboxLog;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$TAG2:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/sdkbox/plugin/SdkboxLog$1;->val$TAG2:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdkbox/plugin/SdkboxLog$1;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/SdkboxLog$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/sdkbox/plugin/SdkboxLog$1;->val$TAG2:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdkbox/plugin/SdkboxLog$1;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdkbox/plugin/SdkboxLog$1;->val$data:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdkbox/plugin/SdkboxLog;->nativeTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
