.class public Lcom/inmobi/commons/analytics/util/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    .line 151
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const-string v0, "inmobiAppAnalyticsAppId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    const-string v1, "APP_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getFirstTime()I
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 104
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit v1

    return-object v0

    .line 107
    :cond_0
    :try_start_1
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    const-string v2, "SESSION_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSessionTime(Landroid/content/Context;)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 115
    const-class v2, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v2

    :try_start_0
    sget-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 116
    sget-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    monitor-exit v2

    return-wide v0

    .line 118
    :cond_0
    :try_start_1
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    const-string v1, "SESSION_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 120
    sput-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized isUpdatedFromOldSDK(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 31
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    const-string v2, "UPDATED_FROM_OLD_SDK"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeSessionId(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    .line 127
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    .line 128
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    const-string v2, "SESSION_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v2, "SESSION_TIME"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v1

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFirstTime()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static storeAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    sput-object p1, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    .line 137
    const-string v0, "inmobiAppAnalyticsAppId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    const-string v1, "APP_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public static declared-synchronized storeFirstTime(Landroid/content/Context;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v0, 0x0

    .line 56
    const-class v3, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v3

    .line 58
    :try_start_0
    const-string v1, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 60
    const-string v2, "SESSION_TIMEM"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 63
    cmp-long v5, v1, v7

    if-eqz v5, :cond_3

    .line 64
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 65
    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 66
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 67
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 68
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    .line 69
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 71
    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :cond_0
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 75
    or-int/lit8 v0, v0, 0x2

    .line 77
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 78
    or-int/lit8 v0, v0, 0x4

    :cond_2
    move-wide v9, v1

    move v2, v0

    move-wide v0, v9

    .line 86
    :goto_0
    const-string v5, "SESSION_TIMEM"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    sput v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v3

    return-void

    .line 82
    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 83
    const/16 v2, 0xf

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized storeSessionId(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 93
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    .line 95
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    const-string v2, "SESSION_ID"

    sget-object v3, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v2, "SESSION_TIME"

    sget-wide v3, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updatedFromOldSDK(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 36
    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    const-string v2, "UPDATED_FROM_OLD_SDK"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v1

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
