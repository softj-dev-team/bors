.class Lzendesk/support/LastSearch;
.super Ljava/lang/Object;
.source "LastSearch.java"


# instance fields
.field private final origin:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final resultsCount:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mobile_sdk"

    .line 14
    iput-object v0, p0, Lzendesk/support/LastSearch;->origin:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lzendesk/support/LastSearch;->query:Ljava/lang/String;

    .line 24
    iput p2, p0, Lzendesk/support/LastSearch;->resultsCount:I

    return-void
.end method


# virtual methods
.method getQuery()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lzendesk/support/LastSearch;->query:Ljava/lang/String;

    return-object v0
.end method

.method getResultsCount()I
    .locals 1

    .line 43
    iget v0, p0, Lzendesk/support/LastSearch;->resultsCount:I

    return v0
.end method
