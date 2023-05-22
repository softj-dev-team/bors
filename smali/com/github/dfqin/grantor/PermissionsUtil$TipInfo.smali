.class public Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/dfqin/grantor/PermissionsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field cancel:Ljava/lang/String;

.field content:Ljava/lang/String;

.field ensure:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->title:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->content:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->cancel:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->ensure:Ljava/lang/String;

    return-void
.end method
