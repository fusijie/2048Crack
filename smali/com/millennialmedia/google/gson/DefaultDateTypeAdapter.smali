.class final Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultDateTypeAdapter.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/JsonSerializer;
.implements Lcom/millennialmedia/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/millennialmedia/google/gson/JsonSerializer",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/millennialmedia/google/gson/JsonDeserializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final enUsFormat:Ljava/text/DateFormat;

.field private final iso8601Format:Ljava/text/DateFormat;

.field private final localFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 48
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 51
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 61
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 67
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "datePattern"

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 3
    .parameter "enUsFormat"
    .parameter "localFormat"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    .line 74
    iput-object p2, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->iso8601Format:Ljava/text/DateFormat;

    .line 77
    iget-object v0, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->iso8601Format:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    return-void
.end method

.method private deserializeToDate(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/util/Date;
    .locals 4
    .parameter "json"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v1

    .line 119
    :try_start_2
    iget-object v1, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 120
    :catch_1
    move-exception v1

    .line 123
    :try_start_4
    iget-object v1, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->iso8601Format:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 124
    :catch_2
    move-exception v0

    .line 125
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->deserialize(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonDeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 4
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 95
    instance-of v1, p1, Lcom/millennialmedia/google/gson/JsonPrimitive;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/millennialmedia/google/gson/JsonParseException;

    const-string v2, "The date should be a string value"

    invoke-direct {v1, v2}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->deserializeToDate(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/util/Date;

    move-result-object v0

    .line 99
    .local v0, date:Ljava/util/Date;
    const-class v1, Ljava/util/Date;

    if-ne p2, v1, :cond_1

    .line 104
    .end local v0           #date:Ljava/util/Date;
    :goto_0
    return-object v0

    .line 101
    .restart local v0       #date:Ljava/util/Date;
    :cond_1
    const-class v1, Ljava/sql/Timestamp;

    if-ne p2, v1, :cond_2

    .line 102
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 103
    :cond_2
    const-class v1, Ljava/sql/Date;

    if-ne p2, v1, :cond_3

    .line 104
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 106
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot deserialize to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonSerializationContext;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonSerializationContext;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/JsonSerializationContext;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 3
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, dateFormatAsString:Ljava/lang/String;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    monitor-exit v2

    return-object v1

    .line 89
    .end local v0           #dateFormatAsString:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, sb:Ljava/lang/StringBuilder;
    const-class v1, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
