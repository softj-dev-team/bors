.class synthetic Lzendesk/support/SupportEngineModel$4;
.super Ljava/lang/Object;
.source "SupportEngineModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/SupportEngineModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$zendesk$support$SupportEngineModel$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 265
    invoke-static {}, Lzendesk/support/SupportEngineModel$State;->values()[Lzendesk/support/SupportEngineModel$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lzendesk/support/SupportEngineModel$4;->$SwitchMap$zendesk$support$SupportEngineModel$State:[I

    :try_start_0
    sget-object v1, Lzendesk/support/SupportEngineModel$State;->AWAITING_MESSAGE:Lzendesk/support/SupportEngineModel$State;

    invoke-virtual {v1}, Lzendesk/support/SupportEngineModel$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lzendesk/support/SupportEngineModel$4;->$SwitchMap$zendesk$support$SupportEngineModel$State:[I

    sget-object v1, Lzendesk/support/SupportEngineModel$State;->AWAITING_EMAIL:Lzendesk/support/SupportEngineModel$State;

    invoke-virtual {v1}, Lzendesk/support/SupportEngineModel$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
