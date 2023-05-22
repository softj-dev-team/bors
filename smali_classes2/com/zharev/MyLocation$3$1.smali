.class Lcom/zharev/MyLocation$3$1;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/MyLocation$3;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zharev/MyLocation$3;


# direct methods
.method constructor <init>(Lcom/zharev/MyLocation$3;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/zharev/MyLocation$3$1;->this$1:Lcom/zharev/MyLocation$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, ""

    .line 128
    invoke-static {v0}, Lcom/zharev/MyLocation;->onLocationUpdate(Ljava/lang/String;)V

    return-void
.end method
