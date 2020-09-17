package cn.hl.jedis.test;

import java.util.HashSet;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPool;

public class JedisTest {

	
	public void testJedis()throws Exception{
//		Jedis jedis=new Jedis("192.168.8.9",6379);	
//		jedis.auth("123456");
//		jedis.set("a2aa", "6666");
//		String val = jedis.get("a2aa");
//		System.out.println(val);
//		jedis.close();
	}
//	@Test
//	public void testJedisPool()throws Exception{
//		JedisPool jp=new JedisPool("192.168.8.9",6379);
//		Jedis jedis = jp.getResource();
//		jedis.set("bbb", "my first");
//		String val = jedis.get("bbb");
//		System.out.println(val);
//		jedis.close();
//		jp.close();
//	}
//	@Test
//	public void testJedisCluster()throws Exception{
//		Set<HostAndPort> nodes=new HashSet<>();
//		nodes.add(new HostAndPort("192.168.193.131", 7001));
//		nodes.add(new HostAndPort("192.168.193.131", 7002));
//		nodes.add(new HostAndPort("192.168.193.131", 7003));
//		nodes.add(new HostAndPort("192.168.193.131", 7004));
//		nodes.add(new HostAndPort("192.168.193.131", 7005));
//		nodes.add(new HostAndPort("192.168.193.131", 7006));
//		JedisCluster jc=new JedisCluster(nodes);
//		jc.set("ccc", "999888777");
//		String val = jc.get("ccc");
//		System.out.println(val);
//		jc.close();
//	}
//	@Test
//	public void testJedisPoolApplication()throws Exception {
//		ApplicationContext context=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-redis.xml");
//		JedisClient bean = (JedisClient) context.getBean("jedisClientPool");
//		bean.set("ddd", "123123");
//		String val = bean.get("ddd");
//		System.out.println(val);
//	}
}
