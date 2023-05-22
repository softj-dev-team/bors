.class Lzendesk/support/request/UtilsDate;
.super Ljava/lang/Object;
.source "UtilsDate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBeginOfDay(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .line 41
    invoke-static {p0}, Lzendesk/support/request/UtilsDate;->getCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 44
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 46
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 48
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 3

    .line 60
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 61
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method private static getYesterday()Ljava/util/Date;
    .locals 3

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lzendesk/support/request/UtilsDate;->getCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 5

    .line 30
    invoke-static {p0}, Lzendesk/support/request/UtilsDate;->getCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    .line 31
    invoke-static {p1}, Lzendesk/support/request/UtilsDate;->getCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    .line 34
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x5

    .line 35
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method static isToday(Ljava/util/Date;)Z
    .locals 2

    .line 21
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    return p0
.end method

.method static isYesterday(Ljava/util/Date;)Z
    .locals 1

    .line 25
    invoke-static {}, Lzendesk/support/request/UtilsDate;->getYesterday()Ljava/util/Date;

    move-result-object v0

    .line 26
    invoke-static {p0, v0}, Lzendesk/support/request/UtilsDate;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method
