package com.SpringDemo.pojo;

import com.SpringDemo.pojo.Orders;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-04-09T23:40:37")
@StaticMetamodel(Trips.class)
public class Trips_ { 

    public static volatile SingularAttribute<Trips, Date> createdAt;
    public static volatile SingularAttribute<Trips, String> startLocation;
    public static volatile SingularAttribute<Trips, String> name;
    public static volatile SingularAttribute<Trips, Integer> id;
    public static volatile SingularAttribute<Trips, String> endLocation;
    public static volatile ListAttribute<Trips, Orders> ordersList;
    public static volatile SingularAttribute<Trips, Date> updatedAt;

}