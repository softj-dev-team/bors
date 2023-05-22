.class public Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/TrackingLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackingDescriptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->url:Ljava/lang/String;

    return-void
.end method

.method public save(Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method
