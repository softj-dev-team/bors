.class Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$602(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    .line 212
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$700(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$800(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$500(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    :goto_0
    return-void
.end method
