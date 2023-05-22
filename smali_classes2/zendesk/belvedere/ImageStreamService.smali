.class Lzendesk/belvedere/ImageStreamService;
.super Ljava/lang/Object;
.source "ImageStreamService.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageStreamCursorProvider:Lzendesk/belvedere/ImageStreamCursorProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamService;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Lzendesk/belvedere/ImageStreamCursorProvider;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {v0, p1, v1}, Lzendesk/belvedere/ImageStreamCursorProvider;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamService;->imageStreamCursorProvider:Lzendesk/belvedere/ImageStreamCursorProvider;

    return-void
.end method


# virtual methods
.method isAppAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamService;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lzendesk/belvedere/Utils;->isAppAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method queryRecentImages(I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 27
    iget-object v2, v1, Lzendesk/belvedere/ImageStreamService;->imageStreamCursorProvider:Lzendesk/belvedere/ImageStreamCursorProvider;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lzendesk/belvedere/ImageStreamCursorProvider;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "external"

    const-string v4, "_id"

    .line 33
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 32
    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    const-string v3, "_size"

    .line 35
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v3, "width"

    .line 36
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v3, "height"

    .line 37
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v3, "_display_name"

    .line 38
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "image/jpeg"

    .line 41
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "."

    .line 42
    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 44
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v11, v3

    .line 48
    new-instance v3, Lzendesk/belvedere/MediaResult;

    const/4 v7, 0x0

    move-object v6, v3

    move-object v8, v9

    invoke-direct/range {v6 .. v17}, Lzendesk/belvedere/MediaResult;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_1
    throw v0

    :cond_2
    if-eqz v2, :cond_3

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method
