.class public final Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;
.super Lcom/google/firebase/appindexing/builders/IndexableBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder<",
        "Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "MusicGroup"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs setAlbum([Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;)Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;
    .locals 1

    const-string v0, "album"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;

    return-object p1
.end method

.method public final setGenre(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "genre"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;

    return-object p1
.end method

.method public final varargs setTrack([Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;)Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;
    .locals 1

    const-string v0, "track"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;

    return-object p1
.end method
