.class synthetic Lcom/sdkbox/services/FileUtils$1;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sdkbox$services$FileUtils$Storage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/sdkbox/services/FileUtils$Storage;->values()[Lcom/sdkbox/services/FileUtils$Storage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sdkbox/services/FileUtils$1;->$SwitchMap$com$sdkbox$services$FileUtils$Storage:[I

    :try_start_0
    sget-object v1, Lcom/sdkbox/services/FileUtils$Storage;->INTERNAL:Lcom/sdkbox/services/FileUtils$Storage;

    invoke-virtual {v1}, Lcom/sdkbox/services/FileUtils$Storage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sdkbox/services/FileUtils$1;->$SwitchMap$com$sdkbox$services$FileUtils$Storage:[I

    sget-object v1, Lcom/sdkbox/services/FileUtils$Storage;->ASSETS:Lcom/sdkbox/services/FileUtils$Storage;

    invoke-virtual {v1}, Lcom/sdkbox/services/FileUtils$Storage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
