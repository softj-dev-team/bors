.class Lcom/zharev/MyLocation$2;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/MyLocation;->startLocation(Lcom/sdkbox/plugin/SDKBoxActivity;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zharev/MyLocation;


# direct methods
.method constructor <init>(Lcom/zharev/MyLocation;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zharev/MyLocation$2;->this$0:Lcom/zharev/MyLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, ""

    .line 94
    invoke-static {v0}, Lcom/zharev/MyLocation;->onLocationUpdate(Ljava/lang/String;)V

    return-void
.end method
