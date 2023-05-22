.class Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;
.super Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerStartState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 458
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 459
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 460
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 462
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 466
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor start: default routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRoute"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "info"
        }
    .end annotation

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartState: onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1d

    const-string v5, " mIsBTHeadsetPlugged "

    const-string v6, "BT HEADSET EVENT  "

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq p1, v7, :cond_14

    if-eq p1, v8, :cond_10

    const/16 v7, 0xb

    if-eq p1, v7, :cond_c

    const/16 v7, 0x10

    if-eq p1, v7, :cond_a

    const/16 v7, 0x15

    if-eq p1, v7, :cond_9

    const/16 v7, 0x16

    if-eq p1, v7, :cond_6

    const/16 v7, 0x70

    if-eq p1, v7, :cond_2

    const/16 v1, 0x71

    if-eq p1, v1, :cond_0

    .line 644
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->onEvent(II)V

    goto/16 :goto_2

    .line 633
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 636
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 637
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 638
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 639
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 640
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 613
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-ne p1, v4, :cond_3

    goto/16 :goto_2

    .line 616
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 619
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3700(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-eq p1, v2, :cond_4

    goto/16 :goto_2

    .line 623
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 624
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 625
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 626
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3300(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 628
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 629
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_2

    .line 600
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone state changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    if-nez p2, :cond_8

    .line 607
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_2

    .line 609
    :cond_8
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 549
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 550
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 551
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3400(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 537
    :cond_a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    move-result-object p1

    if-nez p2, :cond_b

    .line 539
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 540
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 543
    :cond_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 544
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3300(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    goto/16 :goto_2

    .line 522
    :cond_c
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 524
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_f

    if-ne p2, v4, :cond_d

    .line 526
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v8}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    :cond_d
    if-nez p2, :cond_e

    .line 528
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    .line 530
    :cond_e
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 533
    :cond_f
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 590
    :cond_10
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v4, :cond_11

    const/4 v7, 0x1

    :cond_11
    invoke-static {p1, v7}, Lio/agora/rtc/internal/AudioRoutingController;->access$3502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 591
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 594
    :cond_12
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v4, :cond_13

    const/4 v3, 0x1

    :cond_13
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3600(Lio/agora/rtc/internal/AudioRoutingController;Z)V

    if-nez p2, :cond_23

    .line 596
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    goto/16 :goto_2

    :cond_14
    if-nez p2, :cond_15

    .line 555
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 558
    :cond_15
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 559
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ne p2, v4, :cond_16

    const/4 v0, 0x1

    goto :goto_1

    :cond_16
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 560
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 563
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 565
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 572
    :cond_18
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-ne p1, v4, :cond_19

    .line 573
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v8}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 574
    :cond_19
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-nez p1, :cond_1b

    .line 575
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 576
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 578
    :cond_1a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto/16 :goto_2

    .line 581
    :cond_1b
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 582
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_2

    .line 584
    :cond_1c
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_2

    .line 496
    :cond_1d
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 497
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-ltz p2, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 498
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    .line 501
    :cond_1f
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-eq p1, p2, :cond_21

    .line 503
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 504
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 505
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 506
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 508
    :cond_20
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_2

    .line 510
    :cond_21
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 511
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_2

    .line 517
    :cond_22
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    :cond_23
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 3

    .line 473
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 480
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 481
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor reset: default routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
