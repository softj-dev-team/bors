.class public final Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lorg/cocos2dx/okio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/cocos2dx/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/cocos2dx/okhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 289
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    sget-object v0, Lorg/cocos2dx/okhttp3/MultipartBody;->MIXED:Lorg/cocos2dx/okhttp3/MediaType;

    iput-object v0, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->type:Lorg/cocos2dx/okhttp3/MediaType;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 293
    invoke-static {p1}, Lorg/cocos2dx/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lorg/cocos2dx/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->boundary:Lorg/cocos2dx/okio/ByteString;

    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
    .locals 0

    .line 323
    invoke-static {p1, p2}, Lorg/cocos2dx/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2dx/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->addPart(Lorg/cocos2dx/okhttp3/MultipartBody$Part;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 328
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->addPart(Lorg/cocos2dx/okhttp3/MultipartBody$Part;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lorg/cocos2dx/okhttp3/Headers;Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
    .locals 0
    .param p1    # Lorg/cocos2dx/okhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 318
    invoke-static {p1, p2}, Lorg/cocos2dx/okhttp3/MultipartBody$Part;->create(Lorg/cocos2dx/okhttp3/Headers;Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->addPart(Lorg/cocos2dx/okhttp3/MultipartBody$Part;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lorg/cocos2dx/okhttp3/MultipartBody$Part;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "part == null"

    .line 333
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPart(Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
    .locals 0

    .line 313
    invoke-static {p1}, Lorg/cocos2dx/okhttp3/MultipartBody$Part;->create(Lorg/cocos2dx/okhttp3/RequestBody;)Lorg/cocos2dx/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->addPart(Lorg/cocos2dx/okhttp3/MultipartBody$Part;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lorg/cocos2dx/okhttp3/MultipartBody;
    .locals 4

    .line 340
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lorg/cocos2dx/okhttp3/MultipartBody;

    iget-object v1, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->boundary:Lorg/cocos2dx/okio/ByteString;

    iget-object v2, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->type:Lorg/cocos2dx/okhttp3/MediaType;

    iget-object v3, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2dx/okhttp3/MultipartBody;-><init>(Lorg/cocos2dx/okio/ByteString;Lorg/cocos2dx/okhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Lorg/cocos2dx/okhttp3/MediaType;)Lorg/cocos2dx/okhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "type == null"

    .line 302
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p1}, Lorg/cocos2dx/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/MultipartBody$Builder;->type:Lorg/cocos2dx/okhttp3/MediaType;

    return-object p0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
